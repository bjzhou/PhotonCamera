.class public final Lbsn;
.super Lbsv;
.source "PG"


# static fields
.field public static final a:Lbsn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Lbsn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lbsn;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lbsn;->a:Lbsn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const v1, 0x14

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
    goto/32 :goto_3

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-direct {p0, v0, v1, v1}, Lbsv;-><init>(III)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Lbsw;Lbky;Lbqk;Lbpx;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    check-cast p0, Lbpc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, p0}, Lbsw;->b(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    invoke-super {p0, p1}, Lbsv;->c(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, v0}, La;->p(II)Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    const-string p0, "scope"

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
