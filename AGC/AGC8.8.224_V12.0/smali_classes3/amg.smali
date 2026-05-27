.class public final Lamg;
.super Ljava/lang/Object;

# interfaces
.implements Lalt;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lamg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lalr;
    .locals 1

    iget p1, p0, Lamg;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcs;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcs;-><init>(Z)V

    return-object p1

    :pswitch_0
    new-instance p1, Lamh;

    invoke-direct {p1}, Lamh;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Class;Lalz;)Lalr;
    .locals 0

    iget p2, p0, Lamg;->a:I

    packed-switch p2, :pswitch_data_0

    invoke-static {p0, p1}, Lacf;->b(Lalt;Ljava/lang/Class;)Lalr;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lacf;->b(Lalt;Ljava/lang/Class;)Lalr;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
