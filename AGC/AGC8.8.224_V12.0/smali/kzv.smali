.class final Lkzv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Llaa;

.field private final d:Lkzg;

.field private final e:Llpm;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkzv;->a:Ljava/lang/Object;

    iput-object p3, p0, Lkzv;->b:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lkzv;->c:Llaa;

    iput-object p2, p0, Lkzv;->d:Lkzg;

    iput-object p5, p0, Lkzv;->e:Llpm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lkzv;->a:Ljava/lang/Object;

    iget-object v1, p0, Lkzv;->d:Lkzg;

    iget-object v2, p0, Lkzv;->b:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lkzv;->c:Llaa;

    invoke-static {v0, v1, v2, v3}, Llaa;->o(Ljava/lang/Object;Lkzg;Ljava/util/concurrent/Executor;Llaa;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkzv;->d:Lkzg;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
