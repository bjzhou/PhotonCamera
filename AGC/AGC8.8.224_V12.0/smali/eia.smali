.class public final Leia;
.super Ljava/lang/Object;


# static fields
.field private static final p:Lnak;


# instance fields
.field public final a:Lkbc;

.field public final b:Lkaq;

.field public final c:Lejo;

.field public final d:Lejr;

.field public final e:Ljuh;

.field public final f:Ljvk;

.field public final g:Lcfp;

.field public h:Lken;

.field public i:Landroid/view/Surface;

.field public j:Lkfj;

.field public k:Lkef;

.field public l:Lehz;

.field public m:Lkee;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Lkha;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/imax/ImaxFrameServer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leia;->p:Lnak;

    return-void
.end method

.method public constructor <init>(Lkha;Lkaq;Lkbc;Lejo;Lejr;Ljuh;Lcfp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Leia;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Leia;->o:Lkha;

    iput-object p3, p0, Leia;->a:Lkbc;

    iput-object p4, p0, Leia;->c:Lejo;

    iput-object p5, p0, Leia;->d:Lejr;

    iput-object p6, p0, Leia;->e:Ljuh;

    const-string p1, "ImaxFrameServer"

    invoke-interface {p2, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Leia;->b:Lkaq;

    new-instance p1, Ljvk;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Leia;->f:Ljvk;

    iput-object p7, p0, Leia;->g:Lcfp;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Leia;->h:Lken;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v0}, Lken;->w(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Leia;->p:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Panorama failed to lock 3A."

    const/16 v2, 0x5d7

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Leia;->h:Lken;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v0, v0, v0}, Lken;->m(ZZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    sget-object v0, Leia;->p:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Panorama failed to unlock 3A."

    const/16 v2, 0x5d5

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Leia;->f:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
