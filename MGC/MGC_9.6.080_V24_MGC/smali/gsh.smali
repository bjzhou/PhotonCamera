.class final Lgsh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpae;


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-array v0, v0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lgsh;->a:[B

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()[B
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lgsh;->a:[B

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
