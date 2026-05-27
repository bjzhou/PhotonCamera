.class final Landroidx/wear/ambient/SharedLibraryVersion$VersionHolder;
.super Ljava/lang/Object;


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/wearable/WearableSharedLib;->version()I

    move-result v0

    sput v0, Landroidx/wear/ambient/SharedLibraryVersion$VersionHolder;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
