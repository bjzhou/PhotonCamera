.class public final Ljks;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic e:I

.field private static final f:Lmvv;


# instance fields
.field public final a:Ljku;

.field public final b:Lkrn;

.field public final c:Ljava/util/Random;

.field public final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CREATE TABLE collections(id INTEGER PRIMARY KEY, collection_name STRING NOT NULL,time INTEGER NOT NULL,selection_key INTEGER NOT NULL,value BLOB NOT NULL)"

    invoke-static {v0}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v0

    sput-object v0, Ljks;->f:Lmvv;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkrn;Ljava/util/Random;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljku;

    sget-object v1, Ljks;->f:Lmvv;

    invoke-direct {v0, p1, v1}, Ljku;-><init>(Landroid/content/Context;Lmvv;)V

    iput-object v0, p0, Ljks;->a:Ljku;

    iput-object p2, p0, Ljks;->b:Lkrn;

    iput-object p3, p0, Ljks;->c:Ljava/util/Random;

    iput-object p4, p0, Ljks;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Lmqi;)Lnou;
    .locals 2

    new-instance v0, Lcnb;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1}, Lcnb;-><init>(Ljks;Lmqi;I)V

    iget-object p1, p0, Ljks;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method
