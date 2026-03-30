.class public Layu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Layu;


# instance fields
.field public final b:Lcob;

.field public final c:Ldif;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Layu;->a:Layu;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    new-instance v0, Layu;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1, v1}, Layu;-><init>(Lcob;Ldif;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    const v0, 0x15

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const v1, 0x14

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcob;Ldif;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Layu;->c:Ldif;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Layu;->b:Lcob;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic a(Layu;Lcob;Ldif;I)Layu;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Layu;->b:Lcob;

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p2, p0, Layu;->c:Ldif;

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Layu;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-direct {p0, p1, p2}, Layu;-><init>(Lcob;Ldif;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    and-int/lit8 p3, p3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    and-int/lit8 v0, p3, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
