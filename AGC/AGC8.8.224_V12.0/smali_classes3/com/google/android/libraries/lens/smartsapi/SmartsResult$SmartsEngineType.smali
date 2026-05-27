.class public final enum Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

.field public static final enum BARHOPPER:Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

.field public static final enum NONE:Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

.field public static final enum PHILEASSTORM:Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

.field public static final enum PHOTO_OCR:Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;


# direct methods
.method private static synthetic $values()[Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;->PHOTO_OCR:Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;->BARHOPPER:Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;->PHILEASSTORM:Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;->NONE:Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    const-string v1, "PHOTO_OCR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;->PHOTO_OCR:Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    new-instance v0, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    const-string v1, "BARHOPPER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;->BARHOPPER:Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    new-instance v0, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    const-string v1, "PHILEASSTORM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;->PHILEASSTORM:Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    new-instance v0, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;->NONE:Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    invoke-static {}, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;->$values()[Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;->$VALUES:[Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;
    .locals 1

    const-class v0, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;->$VALUES:[Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    invoke-virtual {v0}, [Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/lens/smartsapi/SmartsResult$SmartsEngineType;

    return-object v0
.end method
