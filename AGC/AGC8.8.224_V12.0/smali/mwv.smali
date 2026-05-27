.class final Lmwv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/util/Comparator;

.field final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmwv;->a:Ljava/util/Comparator;

    iput-object p2, p0, Lmwv;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lmwu;

    iget-object v1, p0, Lmwv;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lmwu;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lmwv;->b:[Ljava/lang/Object;

    iget-object v2, v0, Lmwl;->d:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Lmwl;->g(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lmvl;->b([Ljava/lang/Object;I)V

    :cond_1
    invoke-virtual {v0}, Lmwu;->j()Lmww;

    move-result-object v0

    return-object v0
.end method
