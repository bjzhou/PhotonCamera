.class public abstract Lubz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;
.implements Ludo;


# static fields
.field public static final d:Ljava/lang/Object;


# instance fields
.field private transient a:Ludo;

.field private final b:Ljava/lang/Class;

.field private final c:Z

.field protected final e:Ljava/lang/Object;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


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

    :goto_1
    sget-object v0, Luby;->a:Luby;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sput-object v0, Lubz;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-boolean p5, p0, Lubz;->c:Z

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

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lubz;->e:Ljava/lang/Object;

    nop

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

    nop

    :goto_4
    iput-object p4, p0, Lubz;->g:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lubz;->b:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lubz;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lubz;->f:Ljava/lang/String;

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

.method public final e()Ludo;
    .locals 1

    goto/32 :goto_4

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lubz;->h()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object v0, p0, Lubz;->a:Ludo;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p0, p0, Lubz;->a:Ludo;

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
.end method

.method public final f()Ludq;
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    sget p0, Luct;->a:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    new-instance p0, Lucb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    new-instance p0, Lucl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v0}, Lucb;-><init>(Ljava/lang/Class;)V

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0}, Lucl;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lubz;->b:Ljava/lang/Class;

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

    nop

    :goto_d
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean p0, p0, Lubz;->c:Z

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

.method public final varargs g()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected abstract h()V
.end method
