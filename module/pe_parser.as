/*--------------------------------------------------
	Ç`ÇoÇhíËã`
--------------------------------------------------*/
#uselib "user32.dll"
#uselib "kernel32.dll"
	#cfunc CreateFile "CreateFileA" str, int, int, int, int, int, int
	#cfunc GetFileSize "GetFileSize" int, int
	#func ReadFile "ReadFile" int, var, int, int, int

/*--------------------------------------------------
	Ç`ÇoÇhíËêî
--------------------------------------------------*/
// ÉtÉ@ÉCÉãä÷òA
#define GENERIC_READ			0x80000000
#define GENERIC_WRITE			0x40000000
#define OPEN_EXISTING			3
#define FILE_ATTRIBUTE_NORMAL	0x00000080
#define INVALID_HANDLE_VALUE	-1
// PEä÷òA
#define IMAGE_DOS_SIGNATURE		0x5A4D

/*--------------------------------------------------
	ç\ë¢ëÃóp
--------------------------------------------------*/
// IMAGE_DOS_HEADER
#define IMAGE_DOS_HEADER	64
#define e_magic		0
#define e_cblp		2
#define e_cp		4
#define e_crlc		6
#define e_cparhdr	8
#define e_minalloc	10
#define e_maxalloc	12
#define e_ss		14
#define e_sp		16
#define e_csum		18
#define e_ip		20
#define e_cs		22
#define e_lfarlc	24
#define e_ovno		26
#define e_res		28
#define e_oemid		36
#define e_oeminfo	38
#define e_res2		58
#define e_lfanew	60

//// IMAGE_NT_HEADERS
#define IMAGE_NT_SIGNATURE		0x00004550
// IMAGE_FILE_HEADER
#define IMAGE_FILE_HEADER		20
#define Machine					0
#define NumberOfSections		2
#define TimeDateStamp			4
#define PointerToSymbolTable	8
#define NumberOfSymbols			12
#define SizeOfOptionalHeader	16
#define Characteristics			18
// IMAGE_OPTIONAL_HEADER
#define IMAGE_OPTIONAL_HEADER	96 + 8 * 16/*IMAGE_NUMBEROF_DIRECTORY_ENTRIES*/
#define Magic					0
#define MajorLinkerVersion		2
#define MinorLinkerVersion		3
#define SizeOfCode				4
#define SizeOfInitializedData	8
#define SizeOfUninitializedData	12
#define AddressOfEntryPoint		16
#define BaseOfCode				20
#define BaseOfData				24
; nt additional header
#define ImageBase					29
#define SectionAlignment			33
#define FileAlignment				37
#define MajorOperatingSystemVersion	41
#define MinorOperatingSystemVersion	43
#define MajorImageVersion			45
#define MinorImageVersion			47
#define MajorSubsystemVersion		49
#define MinorSubsystemVersion		51
#define Win32VersionValue			53
#define SizeOfImage					57
#define SizeOfHeaders				61
#define CheckSum					65
#define Subsystem					69
#define DllCharacteristics			71
#define SizeOfStackReserve			73
#define SizeOfStackCommit			77
#define SizeOfHeapReserve			81
#define SizeOfHeapCommit			85
#define LoaderFlags					89
#define NumberOfRvaAndSizes			93
#define DataDirectory				97	// size : 8 * IMAGE_NUMBEROF_DIRECTORY_ENTRIES

// IMAGE_SECTION_HEADER
#define IMAGE_SECTION_HEADER		40
#define Name						0
#define PhysicalAddress				8 ; UNION
#define VirtualSize					8 ;
#define VirtualAddress				12
#define SizeOfRawData				16
#define PointerToRawData			20
#define PointerToRelocations		24
#define PointerToLinenumbers		28
#define NumberOfRelocations			32
#define NumberOfLinenumbers			34
#define Characteristics_SH			36

// IMAGE_RESOURCE_DIRECTORY
#define IMAGE_RESOURCE_DIRECTORY	16
#define Characteristics_RD			0
#define TimeDateStamp_RD			4
#define MajorVersion				8
#define MinorVersion				10
#define NumberOfNamedEntries		12
#define NumberOfIdEntries			14

// IMAGE_RESOURCE_DIRECTORY_ENTRY
#define IMAGE_RESOURCE_DIRECTORY_ENTRY	8
#define Name_Id							0
#define OffsetToData_Directory			4

// IMAGE_RESOURCE_DATA_ENTRY
#define IMAGE_RESOURCE_DATA_ENTRY	16
#define OffsetToData				0
#define Size						4
#define CodePage					8
#define Reserved					12
