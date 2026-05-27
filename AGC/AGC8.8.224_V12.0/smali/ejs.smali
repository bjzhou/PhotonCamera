.class public final Lejs;
.super Ljava/lang/Object;

# interfaces
.implements Leju;


# static fields
.field public static a:I

.field public static b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2000

    sput v0, Lejs;->a:I

    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lejs;->b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lejt;
    .locals 3

    new-instance v0, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;

    sget v1, Lejs;->a:I

    sget v2, Lejs;->b:F

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;-><init>(IF)V

    return-object v0
.end method
