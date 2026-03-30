.class public final Leik;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leib;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lehy;

.field public final d:Z

.field public final e:Z

.field public f:Z

.field private final g:Ltxs;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()Leij;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    check-cast p0, Leij;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ltxs;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Leik;->g:Ltxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lehy;ZZ)V
    .locals 0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    new-instance p1, Lmx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-boolean p5, p0, Leik;->e:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/16 p2, 0xc

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p4, p0, Leik;->d:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p0, p2}, Lmx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Leik;->c:Lehy;

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

    :goto_7
    invoke-direct {p2, p1}, Ltxz;-><init>(Luaz;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Leik;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p2, Ltxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Leik;->a:Landroid/content/Context;

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

    :goto_c
    iput-object p2, p0, Leik;->g:Ltxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()Lehx;
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

    :goto_1
    invoke-direct {p0}, Leik;->166277962e993c138a6b1f0c9b571cc0m()Leij;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Leij;->b()Lehx;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c(Z)V
    .locals 1

    goto/32 :goto_6

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
    invoke-interface {v0}, Ltxs;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Leij;->setWriteAheadLoggingEnabled(Z)V

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Leik;->166277962e993c138a6b1f0c9b571cc0m()Leij;

    move-result-object v0

    nop

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

    :goto_5
    iput-boolean p1, p0, Leik;->f:Z

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

    :goto_6
    iget-object v0, p0, Leik;->g:Ltxs;

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

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Leik;->g:Ltxs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Leij;->close()V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ltxs;->b()Z

    move-result v0

    nop

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

    nop

    :goto_6
    invoke-direct {p0}, Leik;->166277962e993c138a6b1f0c9b571cc0m()Leij;

    move-result-object p0

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

    nop
.end method
