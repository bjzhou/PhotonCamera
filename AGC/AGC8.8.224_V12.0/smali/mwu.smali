.class public final Lmwu;
.super Lmwl;


# instance fields
.field private final e:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Lmwl;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lmwu;->e:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final synthetic d(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmwl;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic f()Lmwn;
    .locals 1

    invoke-virtual {p0}, Lmwu;->j()Lmww;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lmww;
    .locals 3

    iget-object v0, p0, Lmwu;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lmwu;->e:Ljava/util/Comparator;

    iget v2, p0, Lmwu;->b:I

    invoke-static {v1, v2, v0}, Lmww;->P(Ljava/util/Comparator;I[Ljava/lang/Object;)Lmww;

    move-result-object v0

    invoke-virtual {v0}, Lmww;->size()I

    move-result v1

    iput v1, p0, Lmwu;->b:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmwu;->c:Z

    return-object v0
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmwl;->g(Ljava/lang/Object;)V

    return-void
.end method
