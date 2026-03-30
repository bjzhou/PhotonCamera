.class final Lhwg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhwr;


# instance fields
.field private final a:Lprw;

.field private final b:[B

.field private final c:Llyd;


# direct methods
.method public constructor <init>(Lprw;[BLlyd;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lhwg;->c:Llyd;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhwg;->b:[B

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhwg;->a:Lprw;

    nop

    goto/32 :goto_1

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

    :goto_4
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lprw;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhwg;->a:Lprw;

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

    nop

    nop

    nop
.end method

.method public final b()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final c(Lmjn;)V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v0, 0xe

    nop

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

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x4f3

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

    :goto_5
    goto/32 :goto_1

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

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x9

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    const-string v0, "Invalid log buffer"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    sget-object p1, Lhwi;->a:Lsdb;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    sget-object v0, Lslx;->a:Lslx;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lhwg;->b:[B

    nop

    nop

    nop

    nop

    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    array-length v3, v1

    nop

    nop

    invoke-virtual {v0, v1, v3, v2}, Ltkb;->s([BILtjv;)V

    iget-object p0, p0, Lhwg;->c:Llyd;

    nop

    nop

    nop

    nop

    nop

    iget p0, p0, Llyd;->f:I

    nop

    nop

    nop

    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_2
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v1, Lslx;

    nop

    iget v2, v1, Lslx;->b:I

    nop

    or-int/lit8 v2, v2, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v2, v1, Lslx;->b:I

    nop

    nop

    iput p0, v1, Lslx;->c:I

    nop

    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lslx;

    nop

    iput-object p0, p1, Lmjn;->l:Lslx;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lhwg;->b:[B

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_3
    goto/32 :goto_0

    nop
.end method
