.class public final Lexv;
.super Ljava/io/OutputStream;
.source "PG"


# instance fields
.field public a:I

.field private final b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lexv;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Lexv;->b:Ljava/io/OutputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method


# virtual methods
.method public final write(I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget p1, p0, Lexv;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lexv;->a:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lexv;->b:Ljava/io/OutputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method

.method public final write([B)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    array-length p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget v0, p0, Lexv;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lexv;->a:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iget-object v0, p0, Lexv;->b:Ljava/io/OutputStream;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final write([BII)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lexv;->a:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    add-int/2addr p1, p3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget p1, p0, Lexv;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lexv;->b:Ljava/io/OutputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
