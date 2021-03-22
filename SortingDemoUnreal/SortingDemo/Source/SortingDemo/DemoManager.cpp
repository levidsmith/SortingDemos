//2021 Levi D. Smith (levidsmith.com)

#include "DemoManager.h"
#include "Weapon.h"


// Sets default values
ADemoManager::ADemoManager()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

}

// Called when the game starts or when spawned
void ADemoManager::BeginPlay() {
	Super::BeginPlay();

	//sortIntegers();
	//sortStrings();
	sortObjects();

	
}

void ADemoManager::sortIntegers() {
	TArray<int> MyArray = { 75, 59, 11, 35, 3, 10, 2021 };

	displayString("Unsorted");
	displayArray(MyArray);

	displayString("Sorted");
	MyArray.Sort();
	displayArray(MyArray);
}

void ADemoManager::sortStrings() {
	TArray<FString> MyArray = { "Orange", "Banana", "grapes", "WATERMELON", "LEMON", "apple" };

	displayString("Unsorted");
	displayArray(MyArray);

	displayString("Sorted");
	MyArray.Sort();
	displayArray(MyArray);
}



void ADemoManager::sortObjects() {
	TArray <AWeapon *>MyArray;

	MyArray.Add(createWeapon("Club", 640, 24));
	MyArray.Add(createWeapon("Bamboo Pole", 100, 8));
	MyArray.Add(createWeapon("Hand Axe", 980, 15));
	MyArray.Add(createWeapon("Broad Sword", 150, 40));
	MyArray.Add(createWeapon("Flame Sword", 560, 35));
	MyArray.Add(createWeapon("Copper Sword", 180, 15));

	displayString("Unsorted");
	displayArray(MyArray);

//	Algo::SortBy(MyArray, &AWeapon::strName); //sort by name
//	Algo::SortBy(MyArray, &AWeapon::iCost); //sort by cost
	Algo::SortBy(MyArray, &AWeapon::iAttack); //sort by attack

	//Sort in reverse
	//Algo::SortBy(MyArray, &AWeapon::iCost, TGreater<>());

	displayString("Sorted");
	displayArray(MyArray);
}

AWeapon *ADemoManager::createWeapon(FString in_strName, int in_iCost, int in_iAttack) {
	AWeapon *weapon;
	FActorSpawnParameters spawninfo;

	weapon = GetWorld()->SpawnActor<AWeapon>(FVector(0.0f), FRotator(0, 0, 0), spawninfo);
	weapon->strName = in_strName;
	weapon->iCost = in_iCost;
	weapon->iAttack = in_iAttack;

	return weapon;
}


void ADemoManager::displayArray(TArray<int> array) {
	FString strOutput = "";

	int i;
	for (i = 0; i < array.Num(); i++) {
		strOutput += FString::FromInt(array[i]);
		if (i < array.Num() - 1) {
			strOutput += ",";
		}
	}

	GEngine->AddOnScreenDebugMessage(-1, 60.0f, FColor::White, strOutput, false, FVector2D(2.0f, 2.0f));
}

void ADemoManager::displayArray(TArray<FString> array) {
	FString strOutput = "";

	int i;
	for (i = 0; i < array.Num(); i++) {
		strOutput += array[i];
		if (i < array.Num() - 1) {
			strOutput += ",";
		}
	}

	GEngine->AddOnScreenDebugMessage(-1, 60.0f, FColor::White, strOutput, false, FVector2D(2.0f, 2.0f));
}

void ADemoManager::displayArray(TArray<AWeapon *> array) {
	FString strOutput = "";

	int i;
	for (i = 0; i < array.Num(); i++) {
		strOutput += array[i]->strName + ", " + FString::FromInt(array[i]->iCost) + ", " + FString::FromInt(array[i]->iAttack);
		if (i < array.Num() - 1) {
			strOutput += "\n";
		}
	}

	GEngine->AddOnScreenDebugMessage(-1, 60.0f, FColor::White, strOutput, false, FVector2D(2.0f, 2.0f));
}

void ADemoManager::displayString(FString str) {
	GEngine->AddOnScreenDebugMessage(-1, 60.0f, FColor::White, str, false, FVector2D(2.0f, 2.0f));
}



// Called every frame
void ADemoManager::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

