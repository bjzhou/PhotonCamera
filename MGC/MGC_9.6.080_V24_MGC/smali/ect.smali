.class public final Lect;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lece;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput p1, p0, Lect;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lecb;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lecu;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lect;->a:I

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    new-instance p0, Lecu;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Lcl;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Lcl;-><init>(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b(Ljava/lang/Class;Lecm;)Lecb;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ldvw;->x(Lece;Ljava/lang/Class;)Lecb;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Ldvw;->x(Lece;Ljava/lang/Class;)Lecb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p2, p0, Lect;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic c(Ludp;Lecm;)Lecb;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_5

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
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lect;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    invoke-static {p0, p1, p2}, Ldvw;->w(Lece;Ludp;Lecm;)Lecb;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1, p2}, Ldvw;->w(Lece;Ludp;Lecm;)Lecb;

    move-result-object p0

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
.end method
