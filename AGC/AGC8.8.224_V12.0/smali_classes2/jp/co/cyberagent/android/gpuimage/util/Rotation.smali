.class public final enum Ljp/co/cyberagent/android/gpuimage/util/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/co/cyberagent/android/gpuimage/util/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/co/cyberagent/android/gpuimage/util/Rotation;

.field public static final enum NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

.field public static final enum ROTATION_180:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

.field public static final enum ROTATION_270:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

.field public static final enum ROTATION_90:Ljp/co/cyberagent/android/gpuimage/util/Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/util/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const-string v1, "ROTATION_90"

    invoke-direct {v0, v1, v3}, Ljp/co/cyberagent/android/gpuimage/util/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const-string v1, "ROTATION_180"

    invoke-direct {v0, v1, v4}, Ljp/co/cyberagent/android/gpuimage/util/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const-string v1, "ROTATION_270"

    invoke-direct {v0, v1, v5}, Ljp/co/cyberagent/android/gpuimage/util/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    aput-object v1, v0, v2

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    aput-object v1, v0, v3

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    aput-object v1, v0, v4

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    aput-object v1, v0, v5

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->$VALUES:[Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Ljp/co/cyberagent/android/gpuimage/util/Rotation;
    .locals 3
    .param p0, "rotation"    # I

    .prologue
    .line 49
    sparse-switch p0, :sswitch_data_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is an unknown rotation. Needs to be either 0, 90, 180 or 270!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :sswitch_0
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    .line 59
    :goto_0
    return-object v0

    .line 53
    :sswitch_1
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    goto :goto_0

    .line 55
    :sswitch_2
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    goto :goto_0

    .line 57
    :sswitch_3
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    goto :goto_0

    .line 59
    :sswitch_4
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    goto :goto_0

    .line 49
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
        0x168 -> :sswitch_4
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/cyberagent/android/gpuimage/util/Rotation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    return-object v0
.end method

.method public static values()[Ljp/co/cyberagent/android/gpuimage/util/Rotation;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->$VALUES:[Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    invoke-virtual {v0}, [Ljp/co/cyberagent/android/gpuimage/util/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 2

    .prologue
    .line 28
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation$1;->$SwitchMap$jp$co$cyberagent$android$gpuimage$util$Rotation:[I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown Rotation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :pswitch_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    .line 32
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 34
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 36
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
