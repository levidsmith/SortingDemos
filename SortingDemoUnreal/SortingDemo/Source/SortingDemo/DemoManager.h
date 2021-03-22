// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

class AWeapon;

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "DemoManager.generated.h"

UCLASS()
class SORTINGDEMO_API ADemoManager : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ADemoManager();
	void sortIntegers();
	void sortStrings();
	void sortObjects();

	void displayArray(TArray<int> array);
	void displayArray(TArray<FString> array);
	void displayArray(TArray<AWeapon *> array);
	void displayString(FString str);

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

private:
	AWeapon *createWeapon(FString in_strName, int in_iCost, int in_iAttack);


};
