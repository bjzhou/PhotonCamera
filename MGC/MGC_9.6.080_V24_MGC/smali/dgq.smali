.class public final Ldgq;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# static fields
.field public static final a:Ldgq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ldgq;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ldgq;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    sput-object v0, Ldgq;->a:Ldgq;

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
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ldfg;-><init>(Ltxp;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Ldfg;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    iget-object p1, p2, Ldfg;->a:Ltxp;

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Ldfg;->a:Ltxp;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    check-cast p2, Ldfg;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ldfg;

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
