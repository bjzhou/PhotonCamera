.class public final Ladu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ladt;

.field final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ladt;I)V
    .locals 0

    iput-object p1, p0, Ladu;->a:Ljava/lang/String;

    iput-object p2, p0, Ladu;->b:Landroid/content/Context;

    iput-object p3, p0, Ladu;->c:Ladt;

    iput p4, p0, Ladu;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkxr;
    .locals 4

    :try_start_0
    iget-object v0, p0, Ladu;->a:Ljava/lang/String;

    iget-object v1, p0, Ladu;->b:Landroid/content/Context;

    iget-object v2, p0, Ladu;->c:Ladt;

    iget v3, p0, Ladu;->d:I

    invoke-static {v0, v1, v2, v3}, Ladw;->b(Ljava/lang/String;Landroid/content/Context;Ladt;I)Lkxr;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v0, Lkxr;

    const/4 v1, -0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkxr;-><init>(I[B)V

    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ladu;->a()Lkxr;

    move-result-object v0

    return-object v0
.end method
