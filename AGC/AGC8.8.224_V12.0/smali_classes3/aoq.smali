.class public final Laoq;
.super Lmq;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final d:Landroid/support/v7/widget/RecyclerView;

.field final e:Laei;

.field final f:Laei;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0, p1}, Lmq;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p0, Lmq;->b:Lmp;

    iput-object v0, p0, Laoq;->e:Laei;

    new-instance v0, Laop;

    invoke-direct {v0, p0}, Laop;-><init>(Laoq;)V

    iput-object v0, p0, Laoq;->f:Laei;

    iput-object p1, p0, Laoq;->d:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final j()Laei;
    .locals 1

    iget-object v0, p0, Laoq;->f:Laei;

    return-object v0
.end method
