.class public final Lglp;
.super Ljava/lang/Object;

# interfaces
.implements Lchr;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lika;

.field private final c:Lken;

.field private final d:Lkli;

.field private final e:Ljvs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/onecamera/LoggingUncaughtExceptionListener"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lglp;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lika;Lken;Lkli;Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lglp;->b:Lika;

    iput-object p2, p0, Lglp;->c:Lken;

    iput-object p3, p0, Lglp;->d:Lkli;

    iput-object p4, p0, Lglp;->e:Ljvs;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    sget-object p1, Lglp;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xba3

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "applicationMode=%s"

    iget-object v2, p0, Lglp;->b:Lika;

    invoke-interface {v0, v1, v2}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object v0

    iget-object v1, p0, Lglp;->d:Lkli;

    invoke-interface {v1}, Lkli;->k()Lklv;

    move-result-object v1

    const-string v2, "facing=%s"

    const/16 v3, 0xba4

    invoke-static {v0, v2, v1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object v0

    iget-object v1, p0, Lglp;->e:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "currentZoom=%f"

    const/16 v3, 0xba5

    invoke-static {v0, v2, v1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lglp;->c:Lken;

    new-instance v2, Landroid/util/StringBuilderPrinter;

    invoke-direct {v2, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v2}, Lken;->a(Landroid/util/Printer;)V

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    const/16 v2, 0xba6

    invoke-static {p1, v1, v0, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void
.end method
