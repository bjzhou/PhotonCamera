.class public final synthetic Ldfh;
.super Ljava/lang/Object;

# interfaces
.implements Ldft;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfh;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ldfh;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final g(JLjava/util/Map;)V
    .locals 8

    iget-object v0, p0, Ldfh;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Ldfh;->b:Ljava/util/Set;

    new-instance v7, Ldcf;

    const/4 v6, 0x2

    move-object v1, v7

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ldcf;-><init>(Ljava/util/Set;JLjava/util/Map;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
