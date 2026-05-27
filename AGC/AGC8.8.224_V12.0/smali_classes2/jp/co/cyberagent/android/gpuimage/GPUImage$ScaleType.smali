.class public final enum Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;
.super Ljava/lang/Enum;
.source "GPUImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

.field public static final enum CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

.field public static final enum CENTER_INSIDE:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    const-string v1, "CENTER_INSIDE"

    invoke-direct {v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_INSIDE:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    const-string v1, "CENTER_CROP"

    invoke-direct {v0, v1, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    const/4 v0, 0x2

    new-array v0, v0, [Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_INSIDE:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    aput-object v1, v0, v2

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    aput-object v1, v0, v3

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->$VALUES:[Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    return-object v0
.end method

.method public static values()[Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->$VALUES:[Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    invoke-virtual {v0}, [Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    return-object v0
.end method
