.class public Lnwh;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnwh;

.field private static volatile b:Z

.field private static volatile c:Lnwh;


# instance fields
.field private final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lnwh;->b:Z

    new-instance v0, Lnwh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnwh;-><init>([B)V

    sput-object v0, Lnwh;->a:Lnwh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnwh;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnwh;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()Lnwh;
    .locals 2

    sget-object v0, Lnwh;->c:Lnwh;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lnwh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnwh;->c:Lnwh;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    const-class v1, Lnwh;

    invoke-static {v1}, Lnwm;->b(Ljava/lang/Class;)Lnwh;

    move-result-object v1

    sput-object v1, Lnwh;->c:Lnwh;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b()Lnwh;
    .locals 1

    new-instance v0, Lnwh;

    invoke-direct {v0}, Lnwh;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c(Lnxy;I)Llhj;
    .locals 2

    iget-object v0, p0, Lnwh;->d:Ljava/util/Map;

    new-instance v1, Lnwg;

    invoke-direct {v1, p1, p2}, Lnwg;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llhj;

    return-object p1
.end method

.method public final d(Llhj;)V
    .locals 4

    iget-object v0, p0, Lnwh;->d:Ljava/util/Map;

    new-instance v1, Lnwg;

    iget-object v2, p1, Llhj;->a:Ljava/lang/Object;

    iget-object v3, p1, Llhj;->b:Ljava/lang/Object;

    check-cast v3, Lnwr;

    iget v3, v3, Lnwr;->a:I

    invoke-direct {v1, v2, v3}, Lnwg;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
