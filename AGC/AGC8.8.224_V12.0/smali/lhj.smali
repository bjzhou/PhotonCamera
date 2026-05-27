.class public final Llhj;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lloi;Lkrn;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhj;->c:Ljava/lang/Object;

    iput-object p2, p0, Llhj;->a:Ljava/lang/Object;

    iput-object p3, p0, Llhj;->b:Ljava/lang/Object;

    iput-object p4, p0, Llhj;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnxy;Ljava/lang/Object;Lnxy;Lnwr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    iget-object v0, p4, Lnwr;->b:Lnzl;

    sget-object v1, Lnzl;->k:Lnzl;

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Llhj;->a:Ljava/lang/Object;

    iput-object p2, p0, Llhj;->d:Ljava/lang/Object;

    iput-object p3, p0, Llhj;->c:Ljava/lang/Object;

    iput-object p4, p0, Llhj;->b:Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lnzl;Ljava/lang/Object;Lnzl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhj;->b:Ljava/lang/Object;

    iput-object p2, p0, Llhj;->c:Ljava/lang/Object;

    iput-object p3, p0, Llhj;->a:Ljava/lang/Object;

    iput-object p4, p0, Llhj;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Llhj;->a:Ljava/lang/Object;

    iput-object p2, p0, Llhj;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Llhj;->d:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Llhj;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lnzl;
    .locals 1

    iget-object v0, p0, Llhj;->b:Ljava/lang/Object;

    check-cast v0, Lnwr;

    iget-object v0, v0, Lnwr;->b:Lnzl;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Llhj;->b:Ljava/lang/Object;

    check-cast v0, Lnwr;

    invoke-virtual {v0}, Lnwr;->a()Lnzm;

    move-result-object v0

    sget-object v1, Lnzm;->h:Lnzm;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    const/4 p1, 0x0

    throw p1
.end method
