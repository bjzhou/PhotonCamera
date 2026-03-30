.class public final Latc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    if-gtz p2, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    const-string p0, "size should be > 0"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    const-string p0, "startIndex should be >= 0"

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Latc;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    if-ltz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-static {p0}, Latc;->BNdbYTkholeECeOS(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Latc;->GvBXMfTtpVMoxOVf(Ljava/lang/String;)V

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    iput p1, p0, Latc;->a:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    iput p2, p0, Latc;->b:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public static BNdbYTkholeECeOS(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Laog;->a(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static GvBXMfTtpVMoxOVf(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Laog;->a(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
