.class public final Lgnm;
.super Ljava/lang/Object;

# interfaces
.implements Lkee;
.implements Lkad;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lecd;

.field public final c:Lkef;

.field public final d:Ljava/util/HashSet;

.field public final e:Ljvb;

.field public final f:Lgue;

.field private final g:Ljava/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/temporalbinning/PckTemporalBinningShunt"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgnm;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lecd;Lgue;Ljvb;Ljava/util/function/Supplier;Lkef;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnm;->b:Lecd;

    iput-object p2, p0, Lgnm;->f:Lgue;

    iput-object p5, p0, Lgnm;->c:Lkef;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lgnm;->d:Ljava/util/HashSet;

    iput-object p3, p0, Lgnm;->e:Ljvb;

    iput-object p4, p0, Lgnm;->g:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final c(Lkhr;)V
    .locals 2

    iget-object v0, p0, Lgnm;->g:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lckt;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lckt;-><init>(Lgnm;I)V

    invoke-static {p1, v0}, Lkfg;->B(Lkhr;Lkex;)V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lgnm;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkll;

    iget-object v2, p0, Lgnm;->b:Lecd;

    invoke-interface {v2, v1}, Lecd;->u(Lkll;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnm;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method
