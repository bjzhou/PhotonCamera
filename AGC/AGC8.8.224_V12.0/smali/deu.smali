.class public final Ldeu;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field private static final g:Lnak;


# instance fields
.field public final b:Lmrl;

.field public final c:Landroid/content/Context;

.field public d:I

.field public e:I

.field public f:Loxq;

.field private final h:Ldne;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MT:[A-Z0-9.-]{19,}((\\*[A-Z0-9.-]{19,})+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldeu;->a:Ljava/util/regex/Pattern;

    const-string v0, "com/google/android/apps/camera/cameravisionkit/SpecialBarcodeProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldeu;->g:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldne;Ldhi;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldeu;->c:Landroid/content/Context;

    iput-object p2, p0, Ldeu;->h:Ldne;

    new-instance p1, Ldet;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Ldet;-><init>(Ldhi;I)V

    invoke-static {p1}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object p1

    iput-object p1, p0, Ldeu;->b:Lmrl;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Ldeu;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Ldeu;->g:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Supporting Play Services version not available"

    const/16 v2, 0x359

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object p1, p0, Ldeu;->h:Ldne;

    invoke-virtual {p1}, Ldne;->o()V

    return-void
.end method

.method public final synthetic b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object p1, p0, Ldeu;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Ldeu;->g:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Application to handle intent was not found on device"

    const/16 v2, 0x35a

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object p1, p0, Ldeu;->h:Ldne;

    invoke-virtual {p1}, Ldne;->o()V

    return-void
.end method

.method public final c(Lluc;JLjava/lang/String;Ljava/lang/Runnable;Lj$/util/Optional;)Lddo;
    .locals 2

    invoke-static {}, Lddo;->a()Lddn;

    move-result-object v0

    iput-object p4, v0, Lddn;->a:Ljava/lang/String;

    iput-object p5, v0, Lddn;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, p2, p3}, Lddn;->f(J)V

    const/4 p2, 0x2

    iput p2, v0, Lddn;->e:I

    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Lddn;->e(Z)V

    iput p2, v0, Lddn;->f:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    invoke-virtual {v0, p4, p5}, Lddn;->g(J)V

    invoke-virtual {p1}, Lluc;->A()Lmqp;

    move-result-object p2

    iget-object p4, p0, Ldeu;->f:Loxq;

    iget p5, p0, Ldeu;->d:I

    iget v1, p0, Ldeu;->e:I

    invoke-static {p2, p4, p5, v1}, Ldez;->f(Lmqp;Loxq;II)Lddl;

    move-result-object p2

    invoke-virtual {v0, p2}, Lddn;->d(Lddl;)V

    new-instance p2, Ldcc;

    const/4 p4, 0x4

    invoke-direct {p2, v0, p4}, Ldcc;-><init>(Lddn;I)V

    invoke-virtual {p6, p2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lluc;->d()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lluc;->d()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/barhopper/Barcode;

    iget p2, p2, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    invoke-virtual {v0, p2}, Lddn;->b(I)V

    invoke-virtual {p1}, Lluc;->d()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/barhopper/Barcode;

    iget p2, p2, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    invoke-virtual {v0, p2}, Lddn;->c(I)V

    invoke-virtual {p1}, Lluc;->d()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/barhopper/Barcode;

    iget p1, p1, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    const/16 p2, 0x100

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v0, p3}, Lddn;->e(Z)V

    :cond_1
    invoke-virtual {v0}, Lddn;->a()Lddo;

    move-result-object p1

    return-object p1
.end method
