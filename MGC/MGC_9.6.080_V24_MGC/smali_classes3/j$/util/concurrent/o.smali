.class Lj$/util/concurrent/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Lj$/util/concurrent/k;

.field b:Lj$/util/concurrent/k;

.field c:Lj$/util/concurrent/n;

.field d:Lj$/util/concurrent/n;

.field e:I

.field f:I

.field g:I

.field final h:I


# direct methods
.method constructor <init>([Lj$/util/concurrent/k;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/concurrent/o;->a:[Lj$/util/concurrent/k;

    iput p2, p0, Lj$/util/concurrent/o;->h:I

    iput p3, p0, Lj$/util/concurrent/o;->e:I

    iput p3, p0, Lj$/util/concurrent/o;->f:I

    iput p4, p0, Lj$/util/concurrent/o;->g:I

    const/4 p1, 0x0

    iput-object p1, p0, Lj$/util/concurrent/o;->b:Lj$/util/concurrent/k;

    return-void
.end method


# virtual methods
.method final a()Lj$/util/concurrent/k;
    .locals 6

    iget-object v0, p0, Lj$/util/concurrent/o;->b:Lj$/util/concurrent/k;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lj$/util/concurrent/k;->d:Lj$/util/concurrent/k;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iput-object v0, p0, Lj$/util/concurrent/o;->b:Lj$/util/concurrent/k;

    return-object v0

    :cond_1
    iget v0, p0, Lj$/util/concurrent/o;->f:I

    iget v1, p0, Lj$/util/concurrent/o;->g:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_9

    iget-object v0, p0, Lj$/util/concurrent/o;->a:[Lj$/util/concurrent/k;

    if-eqz v0, :cond_9

    array-length v1, v0

    iget v3, p0, Lj$/util/concurrent/o;->e:I

    if-le v1, v3, :cond_9

    if-gez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v0, v3}, Lj$/util/concurrent/ConcurrentHashMap;->k([Lj$/util/concurrent/k;I)Lj$/util/concurrent/k;

    move-result-object v4

    if-eqz v4, :cond_6

    iget v5, v4, Lj$/util/concurrent/k;->a:I

    if-gez v5, :cond_6

    instance-of v5, v4, Lj$/util/concurrent/g;

    if-eqz v5, :cond_4

    check-cast v4, Lj$/util/concurrent/g;

    iget-object v4, v4, Lj$/util/concurrent/g;->e:[Lj$/util/concurrent/k;

    iput-object v4, p0, Lj$/util/concurrent/o;->a:[Lj$/util/concurrent/k;

    iget-object v4, p0, Lj$/util/concurrent/o;->d:Lj$/util/concurrent/n;

    if-eqz v4, :cond_3

    iget-object v5, v4, Lj$/util/concurrent/n;->d:Lj$/util/concurrent/n;

    iput-object v5, p0, Lj$/util/concurrent/o;->d:Lj$/util/concurrent/n;

    goto :goto_1

    :cond_3
    new-instance v4, Lj$/util/concurrent/n;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    :goto_1
    iput-object v0, v4, Lj$/util/concurrent/n;->c:[Lj$/util/concurrent/k;

    iput v1, v4, Lj$/util/concurrent/n;->a:I

    iput v3, v4, Lj$/util/concurrent/n;->b:I

    iget-object v0, p0, Lj$/util/concurrent/o;->c:Lj$/util/concurrent/n;

    iput-object v0, v4, Lj$/util/concurrent/n;->d:Lj$/util/concurrent/n;

    iput-object v4, p0, Lj$/util/concurrent/o;->c:Lj$/util/concurrent/n;

    move-object v0, v2

    goto :goto_0

    :cond_4
    instance-of v0, v4, Lj$/util/concurrent/p;

    if-eqz v0, :cond_5

    check-cast v4, Lj$/util/concurrent/p;

    iget-object v0, v4, Lj$/util/concurrent/p;->f:Lj$/util/concurrent/q;

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    move-object v0, v4

    :goto_2
    iget-object v4, p0, Lj$/util/concurrent/o;->c:Lj$/util/concurrent/n;

    if-eqz v4, :cond_8

    :goto_3
    iget-object v3, p0, Lj$/util/concurrent/o;->c:Lj$/util/concurrent/n;

    if-eqz v3, :cond_7

    iget v4, p0, Lj$/util/concurrent/o;->e:I

    iget v5, v3, Lj$/util/concurrent/n;->a:I

    add-int/2addr v4, v5

    iput v4, p0, Lj$/util/concurrent/o;->e:I

    if-lt v4, v1, :cond_7

    iget v1, v3, Lj$/util/concurrent/n;->b:I

    iput v1, p0, Lj$/util/concurrent/o;->e:I

    iget-object v1, v3, Lj$/util/concurrent/n;->c:[Lj$/util/concurrent/k;

    iput-object v1, p0, Lj$/util/concurrent/o;->a:[Lj$/util/concurrent/k;

    iput-object v2, v3, Lj$/util/concurrent/n;->c:[Lj$/util/concurrent/k;

    iget-object v1, v3, Lj$/util/concurrent/n;->d:Lj$/util/concurrent/n;

    iget-object v4, p0, Lj$/util/concurrent/o;->d:Lj$/util/concurrent/n;

    iput-object v4, v3, Lj$/util/concurrent/n;->d:Lj$/util/concurrent/n;

    iput-object v1, p0, Lj$/util/concurrent/o;->c:Lj$/util/concurrent/n;

    iput-object v3, p0, Lj$/util/concurrent/o;->d:Lj$/util/concurrent/n;

    move v1, v5

    goto :goto_3

    :cond_7
    if-nez v3, :cond_0

    iget v2, p0, Lj$/util/concurrent/o;->e:I

    iget v3, p0, Lj$/util/concurrent/o;->h:I

    add-int/2addr v2, v3

    iput v2, p0, Lj$/util/concurrent/o;->e:I

    if-lt v2, v1, :cond_0

    iget v1, p0, Lj$/util/concurrent/o;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj$/util/concurrent/o;->f:I

    iput v1, p0, Lj$/util/concurrent/o;->e:I

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lj$/util/concurrent/o;->h:I

    add-int/2addr v3, v2

    iput v3, p0, Lj$/util/concurrent/o;->e:I

    if-lt v3, v1, :cond_0

    iget v1, p0, Lj$/util/concurrent/o;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj$/util/concurrent/o;->f:I

    iput v1, p0, Lj$/util/concurrent/o;->e:I

    goto/16 :goto_0

    :cond_9
    :goto_4
    iput-object v2, p0, Lj$/util/concurrent/o;->b:Lj$/util/concurrent/k;

    return-object v2
.end method
