.class public final Lavd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbrd;


# instance fields
.field private final a:Lbob;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lavd;->b:I

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v2, Lbom;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v1, Lbrg;->a:Lbrg;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lavc;->a(I)Ludl;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2, v0, v1}, Lbom;-><init>(Ljava/lang/Object;Lbqt;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v2, p0, Lavd;->a:Lbob;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lavd;->b()Ludl;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()Ludl;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ludl;

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
    return-object p0

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lbrd;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lavd;->a:Lbob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final c(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {p1}, Lavc;->a(I)Ludl;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lavd;->b:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lavd;->a:Lbob;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput p1, p0, Lavd;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Lbob;->h(Ljava/lang/Object;)V

    :goto_5
    goto/32 :goto_6

    nop

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

    :goto_7
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop
.end method
