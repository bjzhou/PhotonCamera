.class public final synthetic Lays;
.super Ljava/lang/Object;

# interfaces
.implements Layc;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Laxd;

.field public final synthetic d:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/List;Laxd;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lays;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lays;->b:Ljava/util/List;

    iput-object p3, p0, Lays;->c:Laxd;

    iput-object p4, p0, Lays;->d:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final a(Lbbx;Z)V
    .locals 7

    iget-object p2, p0, Lays;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lays;->b:Ljava/util/List;

    iget-object v3, p0, Lays;->c:Laxd;

    iget-object v4, p0, Lays;->d:Landroidx/work/impl/WorkDatabase;

    new-instance v6, Lapv;

    const/4 v5, 0x2

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lapv;-><init>(Ljava/util/List;Lbbx;Laxd;Landroidx/work/impl/WorkDatabase;I)V

    invoke-interface {p2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
