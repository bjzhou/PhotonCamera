.class public final Lcap;
.super Ljava/lang/Object;

# interfaces
.implements Lcaq;


# instance fields
.field final synthetic a:Lcaq;

.field private volatile b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcaq;)V
    .locals 0

    iput-object p1, p0, Lcap;->a:Lcaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcap;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcap;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcap;->a:Lcaq;

    invoke-interface {v0}, Lcaq;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbze;->v(Ljava/lang/Object;)V

    iput-object v0, p0, Lcap;->b:Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcap;->b:Ljava/lang/Object;

    return-object v0
.end method
