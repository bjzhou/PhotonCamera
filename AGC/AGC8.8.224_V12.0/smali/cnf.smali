.class public final Lcnf;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lcng;

.field public final c:Lkrn;

.field public final d:Ljava/util/Random;

.field public final e:Ljava/util/concurrent/ExecutorService;

.field public final f:Ljava/util/Map;

.field public final g:Lmvv;

.field public final h:Lmvv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/brella/examplestore/lib/CamSqliteExampleStore"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcnf;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkrn;Ljava/util/Random;Ljava/util/concurrent/ExecutorService;Lmvv;Lmvv;Ljava/util/Set;Lmwa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcng;

    invoke-static {p7}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p7

    invoke-direct {v0, p1, p7}, Lcng;-><init>(Landroid/content/Context;Lmvv;)V

    iput-object v0, p0, Lcnf;->b:Lcng;

    iput-object p2, p0, Lcnf;->c:Lkrn;

    iput-object p3, p0, Lcnf;->d:Ljava/util/Random;

    iput-object p4, p0, Lcnf;->e:Ljava/util/concurrent/ExecutorService;

    iput-object p8, p0, Lcnf;->f:Ljava/util/Map;

    iput-object p5, p0, Lcnf;->g:Lmvv;

    iput-object p6, p0, Lcnf;->h:Lmvv;

    return-void
.end method


# virtual methods
.method public final a(Lmqi;)Lnou;
    .locals 2

    new-instance v0, Lcnb;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcnb;-><init>(Lcnf;Lmqi;I)V

    iget-object p1, p0, Lcnf;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method
