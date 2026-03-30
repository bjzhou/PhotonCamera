.class final Letb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lete;

.field private final b:Landroid/content/Intent;

.field private final c:I


# direct methods
.method public constructor <init>(Lete;Landroid/content/Intent;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Letb;->b:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Letb;->a:Lete;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Letb;->c:I

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


# virtual methods
.method public final run()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Letb;->b:Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    iget-object v0, p0, Letb;->a:Lete;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Letb;->c:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    const v1, 0xb

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1, p0}, Lete;->d(Landroid/content/Intent;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop
.end method
