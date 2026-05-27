.class public final Loki;
.super Lokh;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lokj;I)V
    .locals 0

    iput p2, p0, Loki;->d:I

    invoke-direct {p0, p1}, Lokh;-><init>(Lokj;)V

    return-void
.end method

.method public constructor <init>(Lokj;I[B)V
    .locals 0

    iput p2, p0, Loki;->d:I

    invoke-direct {p0, p1}, Lokh;-><init>(Lokj;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Loki;->d:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lokh;->b:I

    iget-object v1, p0, Lokh;->a:Lokj;

    iget v2, v1, Lokj;->d:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lokh;->b:I

    iput v0, p0, Lokh;->c:I

    iget-object v1, v1, Lokj;->a:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lokh;->a()V

    return-object v0

    :pswitch_0
    iget v0, p0, Lokh;->b:I

    iget-object v1, p0, Lokh;->a:Lokj;

    iget v2, v1, Lokj;->d:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lokh;->b:I

    iput v0, p0, Lokh;->c:I

    iget-object v1, v1, Lokj;->b:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lokh;->a()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
