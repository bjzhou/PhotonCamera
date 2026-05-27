.class public Lcom/google/android/apps/camera/testing/prod/ScorePrintService;
.super Landroid/app/IntentService;


# static fields
.field private static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/testing/prod/ScorePrintService"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/testing/prod/ScorePrintService;->a:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CAM_ScorePrintService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/apps/camera/testing/prod/ScorePrintService;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "No intent is given."

    const/16 v1, 0xeb3

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/testing/prod/ScorePrintService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lhng;

    new-instance v1, Ljhp;

    invoke-direct {v1}, Ljhp;-><init>()V

    invoke-interface {v0, v1}, Lhng;->g(Ljhp;)Lgxb;

    move-result-object v0

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhni;

    if-nez v0, :cond_1

    sget-object p1, Lcom/google/android/apps/camera/testing/prod/ScorePrintService;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "The service isn\'t enabled."

    const/16 v1, 0xeb2

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    invoke-interface {v0, p1}, Lhni;->a(Landroid/content/Intent;)V

    return-void
.end method
