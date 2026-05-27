.class public final Lflr;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/modules/capture/CapturePictureTakerHelper"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lflr;->a:Lnak;

    return-void
.end method

.method public static a(Lgxl;Lmbe;)V
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lflr;->a:Lnak;

    invoke-virtual {p0}, Lnaf;->c()Lnaz;

    move-result-object p0

    const-string p1, "No active capture session to interrupt."

    const/16 v0, 0x93a

    invoke-static {p0, p1, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget-object p1, p1, Lmbe;->i:Ljava/lang/Object;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lgxl;->E()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Capture is not on-going, hence cannot interrupt"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
