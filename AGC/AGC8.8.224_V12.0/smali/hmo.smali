.class public final Lhmo;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;

.field public static final b:Ljava/lang/Byte;

.field public static final c:Ljava/lang/Byte;

.field public static final d:Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/taxi/MacroFocusOneCameraModule"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhmo;->a:Lnak;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lhmo;->b:Ljava/lang/Byte;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lhmo;->c:Ljava/lang/Byte;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lhmo;->d:Ljava/lang/Byte;

    return-void
.end method
