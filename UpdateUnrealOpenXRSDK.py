import zipfile
import os
import urllib.request
import argparse
import io

# Source URLs
openxrsdk_zip_url = 'https://codeload.github.com/KhronosGroup/OpenXR-SDK/zip/refs/heads/master'
oculusopenxrsdk_zip_url = 'https://securecdn.oculus.com/binaries/download/?id=4015382005167023'

# OpenXR SDK path structures
openxr_sdk_base_path = "Engine/Source/ThirdParty/OpenXR"
openxr_sdk_structure = {
    "OpenXR-SDK-master/include/": "include/"
}

# Oculus OpenXR SDK path structures
openxr_oculus_base_path = "Engine/Source/ThirdParty/Oculus/OculusOpenXRLoader/OculusOpenXRLoader"
openxr_oculus_sdk_structure = {
    "OpenXR/Include/": "Include/",
    "OpenXR/Libs/Android/arm64-v8a/Release/": "Lib/arm64-v8a/",
    "OpenXR/Libs/Android/armeabi-v7a/Release/": "Lib/armeabi-v7a/"
}

def open_zip(url):
    print("Downloading {0}".format(url))
    zipdata = io.BytesIO()
    zipdata.write(urllib.request.urlopen(url).read())
    return zipfile.ZipFile(zipdata)

def get_filename(zip_file, source_prefix):
    for zipinfo in zip_file.infolist():
        if zipinfo.filename.startswith(source_prefix) and not os.path.isdir(zipinfo.filename):
            yield zipinfo

def extract_zip(zip_file, dest_dir, structure):
    for sourcepath, destpath in structure.items():
        abs_destpath = os.path.normpath(os.path.join(dest_dir, destpath))
    
        if not zipfile.Path(zip_file, at=sourcepath).exists():
            print("Could not find source file {0} in zip".format(sourcepath))
            return

        for src in get_filename(zip_file, sourcepath):
            dst = os.path.join(abs_destpath, os.path.basename(src.filename))
            if not os.path.exists(os.path.dirname(dst)):
                os.makedirs(os.path.dirname(dst), exist_ok=True)
            if not os.path.isdir(dst):
                with open(dst, 'wb') as f:
                    print("Extracting {0} to {1}".format(src.filename, dst))
                    f.write(zip_file.read(src))


# Parse commandline
parser = argparse.ArgumentParser(description='Update Unreal Engine to use the latest OpenXR and Oculus OpenXR sdks')
parser.add_argument('--enginepath', dest='enginepath', action='store', required=True, default="",
                    help='Unreal Engine base directory')
args = parser.parse_args()

# Download and extract zip files
extract_zip(open_zip(openxrsdk_zip_url), os.path.join(args.enginepath, openxr_sdk_base_path), openxr_sdk_structure)
extract_zip(open_zip(oculusopenxrsdk_zip_url), os.path.join(args.enginepath, openxr_oculus_base_path), openxr_oculus_sdk_structure)
