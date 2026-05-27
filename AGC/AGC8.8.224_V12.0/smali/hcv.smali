.class public final Lhcv;
.super Ljava/lang/Object;

# interfaces
.implements Lhbv;


# static fields
.field public static final a:Lnak;

.field public static final b:Lhcu;


# instance fields
.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/lang/Object;

.field public e:I

.field public f:Lhcu;

.field public final g:Lhsh;

.field private h:Lklv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/smarts/SmartsFrameProvider"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhcv;->a:Lnak;

    new-instance v0, Lhct;

    invoke-direct {v0}, Lhct;-><init>()V

    sput-object v0, Lhcv;->b:Lhcu;

    return-void
.end method

.method public constructor <init>(Lhsh;Ljava/util/concurrent/Executor;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lhcv;->d:Ljava/lang/Object;

    sget-object p3, Lklv;->b:Lklv;

    iput-object p3, p0, Lhcv;->h:Lklv;

    sget-object p3, Lhcv;->b:Lhcu;

    iput-object p3, p0, Lhcv;->f:Lhcu;

    iput-object p1, p0, Lhcv;->g:Lhsh;

    iput-object p2, p0, Lhcv;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final e(Lkli;)V
    .locals 1

    invoke-interface {p1}, Lkli;->k()Lklv;

    move-result-object v0

    iput-object v0, p0, Lhcv;->h:Lklv;

    iget-object v0, p0, Lhcv;->f:Lhcu;

    invoke-interface {v0, p1}, Lhcu;->g(Lkli;)V

    return-void
.end method

.method public final f(Lkou;)V
    .locals 0

    iget-object p1, p0, Lhcv;->f:Lhcu;

    invoke-interface {p1}, Lhcu;->m()V

    return-void
.end method

.method public final g(Lkhr;Lkfj;)V
    .locals 2

    iget-object v0, p0, Lhcv;->h:Lklv;

    sget-object v1, Lklv;->b:Lklv;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lctg;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p2, v1}, Lctg;-><init>(Lhcv;Lkfj;I)V

    invoke-static {p1, v0}, Lkfg;->B(Lkhr;Lkex;)V

    return-void
.end method
