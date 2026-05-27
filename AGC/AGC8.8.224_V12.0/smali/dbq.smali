.class public final synthetic Ldbq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Leg;

.field public final synthetic b:Lklv;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ldfa;


# direct methods
.method public synthetic constructor <init>(Ldfa;Leg;Lklv;III[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbq;->f:Ldfa;

    iput-object p2, p0, Ldbq;->a:Leg;

    iput-object p3, p0, Ldbq;->b:Lklv;

    iput p4, p0, Ldbq;->d:I

    iput p5, p0, Ldbq;->e:I

    iput p6, p0, Ldbq;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Ldbq;->f:Ldfa;

    iget-object v1, p0, Ldbq;->a:Leg;

    iget-object v3, p0, Ldbq;->b:Lklv;

    iget v4, p0, Ldbq;->d:I

    iget v5, p0, Ldbq;->e:I

    iget v6, p0, Ldbq;->c:I

    iget-object v2, v0, Ldfa;->a:Ljava/lang/Object;

    check-cast v2, Ldbt;

    invoke-virtual {v2, v1}, Ldbt;->b(Leg;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Ldfa;->f:Ljava/lang/Object;

    const/4 v7, 0x2

    invoke-interface/range {v2 .. v7}, Ldca;->d(Lklv;IIII)V

    :cond_0
    return-void
.end method
