.class final Lcim;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lcin;


# direct methods
.method public constructor <init>(Lcin;)V
    .locals 0

    goto/32 :goto_1

    nop

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
    iput-object p1, p0, Lcim;->a:Lcin;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lcjq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcin;->e:Lubk;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Lcin;->d(Lcjq;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcim;->a:Lcin;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcim;->a:Lcin;

    nop

    goto/32 :goto_0

    nop

    nop
.end method
