.class public abstract Lgzb;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic c:I

.field private static final d:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;

.field final b:Lgza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgzb;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgzb;->a:Ljava/lang/String;

    iput-object p2, p0, Lgzb;->b:Lgza;

    invoke-direct {p0}, Lgzb;->e()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lgyz;

    invoke-direct {v0, p2}, Lgyz;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lgzb;-><init>(Ljava/lang/String;Lgza;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lgzb;
    .locals 1

    sget-object v0, Lgzb;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgzb;

    return-object p0
.end method

.method private final declared-synchronized e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lgzb;->d:Ljava/util/Map;

    iget-object v1, p0, Lgzb;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lgzb;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lgzb;->a:Ljava/lang/String;

    const-string v2, "Duplicate setting key for: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public final c(Ldhi;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgzb;->b:Lgza;

    invoke-interface {v0, p1}, Lgza;->a(Ldhi;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
