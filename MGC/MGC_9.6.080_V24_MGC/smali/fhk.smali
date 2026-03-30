.class final Lfhk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/RuntimeException;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lfhm;


# direct methods
.method public constructor <init>(Lfhm;Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput p5, p0, Lfhk;->d:I

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

    nop

    :goto_1
    iput-object p2, p0, Lfhk;->a:Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfhk;->e:Lfhm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iput p4, p0, Lfhk;->c:I

    nop

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

    :goto_5
    iput-object p3, p0, Lfhk;->b:Ljava/lang/String;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget v3, p0, Lfhk;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_2
    iget p0, p0, Lfhk;->d:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Lfhm;->a:Lfhl;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    const v0, 0xa

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    iget-object v2, p0, Lfhk;->b:Ljava/lang/String;

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

    :goto_8
    goto/32 :goto_10

    nop

    nop

    :goto_9
    iget-object v0, p0, Lfhk;->e:Lfhm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    iget-object v1, p0, Lfhk;->a:Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v1, v2, v3, p0}, Lfhl;->b(Ljava/lang/RuntimeException;Ljava/lang/String;II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    const v1, 0x17

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop
.end method
