.class final Lrwc;
.super Lrwg;
.source "PG"


# static fields
.field public static final a:Lrwc;

.field private static final serialVersionUID:J


# direct methods
.method private 71665ec13d52b6f685942d1d3c74af37m()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lrwc;->a:Lrwc;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lrwc;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lrwc;->a:Lrwc;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lrwc;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, ""

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
    invoke-direct {p0, v0}, Lrwg;-><init>(Ljava/lang/Comparable;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lrwg;)I
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p1, p0, :cond_0

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
    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/Comparable;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const-string v0, "range unbounded on this side"

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

.method public final c(Lrwl;)Ljava/lang/Comparable;
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p1}, Lrwl;->b()Ljava/lang/Comparable;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lrwg;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lrwg;->a(Lrwg;)I

    move-result p0

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

    :goto_2
    return p0

    nop
.end method

.method public final d(Lrwl;)Ljava/lang/Comparable;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/AssertionError;

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

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final e(Ljava/lang/StringBuilder;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/AssertionError;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    throw p0

    nop
.end method

.method public final f(Ljava/lang/StringBuilder;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string p0, "+\u221e)"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final g(Ljava/lang/Comparable;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final h(Lrwl;)Lrwg;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const-string p1, "this statement should be unreachable"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/AssertionError;

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
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

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

.method public final i(Lrwl;)Lrwg;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "+\u221e"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method
