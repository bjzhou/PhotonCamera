.class public final Lmql;
.super Ljava/util/AbstractList;


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lmql;->a:[Ljava/lang/Object;

    iput-object p2, p0, Lmql;->b:Ljava/lang/Object;

    iput-object p3, p0, Lmql;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lmql;->a:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x2

    aget-object p1, v0, p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lmql;->c:Ljava/lang/Object;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lmql;->b:Ljava/lang/Object;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lmql;->a:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
