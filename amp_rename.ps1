# Headrush Block Renamer - Community Edition
# Robust Version for Windows PowerShell

Write-Host "--- Starting Headrush Renamer ---" -ForegroundColor Cyan

function Rename-HeadrushFile {
    param (
        [string]$folder,
        [string]$oldPrefix,
        [string]$newName
    )
    if (Test-Path $folder) {
        # Filters for .block files that start with the specific prefix (case insensitive)
        $files = Get-ChildItem -Path $folder -Filter "${oldPrefix}*.block"
        
        foreach ($file in $files) {
            # Define the target name for the renamed file
            $targetName = "${newName}.block"
            
            # Rename the file, ignoring errors if the target name already exists
            Rename-Item -Path $file.FullName -NewName $targetName -ErrorAction SilentlyContinue
            
            # Output for the user
            Write-Host "[OK] In $folder : '$($file.Name)' -> '$targetName'" -ForegroundColor Green
        }
    }
}


Write-Host "Processing Amp..." -ForegroundColor Yellow
Rename-HeadrushFile "Amp" "+05 Tangerine 30 Ch1" "Orange AD30HTC (Clean)"
Rename-HeadrushFile "Amp" "+05 Tangerine 30 Ch2" "Orange AD30HTC (Drive)"
Rename-HeadrushFile "Amp" "+11 EPB II Clean" "ENGL Powerball II (Channel 1)"
Rename-HeadrushFile "Amp" "+11 EPB II Crunch" "ENGL Powerball II (Channel 2)"
Rename-HeadrushFile "Amp" "+11 EPB II Hi-Lead" "ENGL Powerball II (Channel 4)"
Rename-HeadrushFile "Amp" "+11 EPB II Lo-Lead" "ENGL Powerball II (Channel 3)"
Rename-HeadrushFile "Amp" "+17 Trace Elliot Elf" "Trace Elliot ELF"
Rename-HeadrushFile "Amp" "+59 Deluxe Gain Mod" "Fender Tweed Deluxe (Gain Mod)"
Rename-HeadrushFile "Amp" "+59 Tweed Bass" "Fender '59 Bassman"
Rename-HeadrushFile "Amp" "+59 Tweed Deluxe" "Fender Tweed Deluxe"
Rename-HeadrushFile "Amp" "+59 Tweed Prince" "Fender '59 Princeton"
Rename-HeadrushFile "Amp" "+64 Black Lux Norm" "Fender Deluxe Reverb (Normal)"
Rename-HeadrushFile "Amp" "+64 Black Lux Vib" "Fender Deluxe Reverb (Vibrato)"
Rename-HeadrushFile "Amp" "+64 Black Vib" "Fender Vibroverb"
Rename-HeadrushFile "Amp" "+65 Black Mini" "Fender Champ 6w"
Rename-HeadrushFile "Amp" "+65 Black Prince Rev" "Fender Princeton Reverb"
Rename-HeadrushFile "Amp" "+65 Black Prince" "Fender Princeton"
Rename-HeadrushFile "Amp" "+65 Black SR" "Fender Super Reverb Blackface"
Rename-HeadrushFile "Amp" "+65 J45" "Marshall JTM45"
Rename-HeadrushFile "Amp" "+66 AC Hi Boost Mod" "Vox AC30 Top Boost (Mod)"
Rename-HeadrushFile "Amp" "+66 AC Hi Boost" "Vox AC30 Top Boost"
Rename-HeadrushFile "Amp" "+66 Flip Bass" "Ampeg Portaflex B15-N"
Rename-HeadrushFile "Amp" "+67 Black Duo" "Fender Twin Reverb Blackface"
Rename-HeadrushFile "Amp" "+67 Black Shimmer" "Fender Dual Showman"
Rename-HeadrushFile "Amp" "+67 Plexiglas Vari" "Marshall Super Lead Plexi (Variac Mod)"
Rename-HeadrushFile "Amp" "+68 Plexi EL84 Mod" "Marshall Super Lead Plexi (EL34 tubes mod)"
Rename-HeadrushFile "Amp" "+68 Plexiglas 50W" "Marshall Super Lead Plexi 50W"
Rename-HeadrushFile "Amp" "+69 Blue Line Bass" "Ampeg SVT 300w"
Rename-HeadrushFile "Amp" "+69 Blue Line Scoop" "Ampeg SVT 300w (Scooped)"
Rename-HeadrushFile "Amp" "+69 Plexiglas 100W" "Marshall Super Lead Plexi 100W"
Rename-HeadrushFile "Amp" "+82 Lead 800 100W" "Marshall JCM800 (Normal)"
Rename-HeadrushFile "Amp" "+82 Lead 800 50W" "Marshall JCM800 50w"
Rename-HeadrushFile "Amp" "+82 Lead 800 Bass Mod" "Marshall JCM800 (Bass Mod)"
Rename-HeadrushFile "Amp" "+82 Lead 800 Bright" "Marshall JCM800 (Bright)"
Rename-HeadrushFile "Amp" "+82 Lead 800 TS Mod" "Marshall JCM800 (TS Mod)"
Rename-HeadrushFile "Amp" "+83 400R" "Gallien-Krueger 800RB"
Rename-HeadrushFile "Amp" "+84 J-120H" "Roland Jazz Chorus 120 (Head)"
Rename-HeadrushFile "Amp" "+85 M-2 Lead Cap Mod" "Mesa-Boogie Mark IIc+ (Coupling Cap Mod)"
Rename-HeadrushFile "Amp" "+85 M-2 Lead" "Mesa-Boogie Mark IIc+ (Drive)"
Rename-HeadrushFile "Amp" "+89 SL-100 Clean" "Soldano SLO-100 (Clean)"
Rename-HeadrushFile "Amp" "+89 SL-100 Crunch" "Soldano SLO-100 (Crunch)"
Rename-HeadrushFile "Amp" "+89 SL-100 Drive" "Soldano SLO-100 (Drive)"
Rename-HeadrushFile "Amp" "+89 SL-100 Ext Range" "Soldano SLO-100 (Extreme)"
Rename-HeadrushFile "Amp" "+92 Treadplate Modern" "Mesa Boogie Dual Rectifier (Modern)"
Rename-HeadrushFile "Amp" "+92 Treadplate Raw" "Mesa Boogie Dual Rectifier (Raw)"
Rename-HeadrushFile "Amp" "+92 Treadplate Vintage" "Mesa Boogie Dual Rectifier (Vintage)"
Rename-HeadrushFile "Amp" "+93 MS-30" "Matchless DC30"
Rename-HeadrushFile "Amp" "+97 RB-01B Blue" "Bogner Ecstasy 101B (Blue Channel)"
Rename-HeadrushFile "Amp" "+97 RB-01B Green" "Bogner Ecstasy 101B (Green Channel)"
Rename-HeadrushFile "Amp" "+97 RB-01B Red" "Bogner Ecstasy 101B (Red Channel)"
Rename-HeadrushFile "Amp" "+99 PV51 II Clean" "Peavey 5150 II (Clean)"
Rename-HeadrushFile "Amp" "+99 PV51 II Crunch" "Peavey 5150 II (Crunch)"
Rename-HeadrushFile "Amp" "+99 PV51 II Lead" "Peavey 5150 II (Lead)"

Write-Host "Processing Cab..." -ForegroundColor Yellow
Rename-HeadrushFile "Cab" "+1x12 Black Panel Lux" "1x12 Fender Deluxe Reverb Blackface (Jensen P12N)"
Rename-HeadrushFile "Cab" "+1x12 Tweed Lux" "1x12 Fender Tweed Deluxe (Jensen P12Q)"
Rename-HeadrushFile "Cab" "+1x15 Open Back" "1x15 Fender Pro (Jensen P15N)"
Rename-HeadrushFile "Cab" "+1x8 Custom" "1x8 Fender Champ"
Rename-HeadrushFile "Cab" "+2x12 AC Blue" "2x12 Vox AC30 (Celestion Alnico Blue)"
Rename-HeadrushFile "Cab" "+2x12 B30" "2x12 Bogner (Celestion V30)"
Rename-HeadrushFile "Cab" "+2x12 Black Panel Duo" "2x12 Fender Twin Reverb Blackface (Jensen C12N)"
Rename-HeadrushFile "Cab" "+2x12 Silver Cone" "2x12 Roland JC-120"
Rename-HeadrushFile "Cab" "+4x10 Black SR" "4x10 Fender Super Reverb Blackface (Jensen P10R)"
Rename-HeadrushFile "Cab" "+4x10 Tweed Bass" "4x10 Fender 59 Bassman (Jensen P10Q)"
Rename-HeadrushFile "Cab" "+4x12 65W" "4x12 Marshall 1960A (Celestion G12-65)"
Rename-HeadrushFile "Cab" "+4x12 Classic 30W" "4x12 Marshall 1960A (Celestion G12-30)"
Rename-HeadrushFile "Cab" "+4x12 Green 20W" "4x12 Marshall 1960A (Celestion G12M20 Greenback)"
Rename-HeadrushFile "Cab" "+4x12 Green 25W" "4x12 Marshall 1960B (Celestion G12M25 Greenback)"
Rename-HeadrushFile "Cab" "+8x10 Blue Line" "8x10 Ampeg SVT"

Write-Host "Processing Revalver Amp..." -ForegroundColor Yellow
Rename-HeadrushFile "Revalver Amp" "+03 Herr Demon Ch1" "Diezel Herbert (Ch1)"
Rename-HeadrushFile "Revalver Amp" "+03 Herr Demon Ch2" "Diezel Herbert (Ch2)"
Rename-HeadrushFile "Revalver Amp" "+03 Herr Demon Ch3" "Diezel Herbert (Ch3)"
Rename-HeadrushFile "Revalver Amp" "+05 Peavey 6505 Clean" "Peavey 6505 (Clean)"
Rename-HeadrushFile "Revalver Amp" "+05 Peavey 6505 Crunch" "Peavey 6505 (Crunch)"
Rename-HeadrushFile "Revalver Amp" "+05 Peavey 6505 Lead" "Peavey 6505 (Lead)"
Rename-HeadrushFile "Revalver Amp" "+11 Angel PB II Clean" "ENGL Powerball II (Clean Channel)"
Rename-HeadrushFile "Revalver Amp" "+11 Angel PB II Crunch" "ENGL Powerball II (Crunch Channel)"
Rename-HeadrushFile "Revalver Amp" "+11 Angel PB II Hi-Lead" "ENGL Powerball II (Hi-Lead Channel)"
Rename-HeadrushFile "Revalver Amp" "+11 Angel PB II Lo-Lead" "ENGL Powerball II (Lo-Lead Channel)"
Rename-HeadrushFile "Revalver Amp" "+62 BluesMaker" "Marshall Bluesbreaker"
Rename-HeadrushFile "Revalver Amp" "+64 Fox AC30" "Vox AC30"
Rename-HeadrushFile "Revalver Amp" "+99 Peavey Classic 30 Ch1" "Peavey Classic 30 (Ch1)"
Rename-HeadrushFile "Revalver Amp" "+99 Peavey Classic 30 Ch2" "Peavey Classic 30 (Ch2)"

Write-Host "Processing Revalver Cab..." -ForegroundColor Yellow
Rename-HeadrushFile "Revalver Cab" "+Angel 412 Slant" "4x12 Angel 4x12 Slant"
Rename-HeadrushFile "Revalver Cab" "+Budda 412" "4x12 Budda 4x12"
Rename-HeadrushFile "Revalver Cab" "+Peavey 6505 412" "4x12 Peavey 6505 4x12"
Rename-HeadrushFile "Revalver Cab" "+Randy 412" "4x12 Randall 4x12"
Rename-HeadrushFile "Revalver Cab" "+Redhot PPC 412" "4x12 Orange PPC 4x12"

Write-Host "--- Process Completed! ---" -ForegroundColor Cyan
