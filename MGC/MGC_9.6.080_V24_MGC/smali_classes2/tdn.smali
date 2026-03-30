.class public Ltdn;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ltho;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ltho;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    iput v2, v1, Ltho;->d:I

    nop

    nop

    nop

    sget-object v2, Lthc;->T:Ltdx;

    nop

    check-cast v2, Ltfj;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1, p0}, Ltfj;->c(Ltho;Ltdn;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/AssertionError;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v1, 0xf

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method
