.class public final Lokz;
.super Lonf;

# interfaces
.implements Lomo;


# static fields
.field public static final a:Lokz;

.field public static final b:Lokz;

.field public static final c:Lokz;

.field public static final d:Lokz;

.field public static final e:Lokz;

.field public static final f:Lokz;

.field public static final g:Lokz;

.field public static final h:Lokz;

.field public static final i:Lokz;


# instance fields
.field private final synthetic j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokz;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lokz;-><init>(I)V

    sput-object v0, Lokz;->i:Lokz;

    new-instance v0, Lokz;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lokz;-><init>(I)V

    sput-object v0, Lokz;->h:Lokz;

    new-instance v0, Lokz;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lokz;-><init>(I)V

    sput-object v0, Lokz;->g:Lokz;

    new-instance v0, Lokz;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lokz;-><init>(I)V

    sput-object v0, Lokz;->f:Lokz;

    new-instance v0, Lokz;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lokz;-><init>(I)V

    sput-object v0, Lokz;->e:Lokz;

    new-instance v0, Lokz;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lokz;-><init>(I)V

    sput-object v0, Lokz;->d:Lokz;

    new-instance v0, Lokz;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lokz;-><init>(I)V

    sput-object v0, Lokz;->c:Lokz;

    new-instance v0, Lokz;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lokz;-><init>(I)V

    sput-object v0, Lokz;->b:Lokz;

    new-instance v0, Lokz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokz;-><init>(I)V

    sput-object v0, Lokz;->a:Lokz;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lokz;->j:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lokz;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p1, Loxi;

    check-cast p2, Lokx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lort;

    if-eqz v0, :cond_d

    check-cast p2, Lort;

    iget-object v0, p1, Loxi;->a:Lola;

    invoke-interface {p2, v0}, Lort;->cS(Lola;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Loxi;->b:[Ljava/lang/Object;

    iget v2, p1, Loxi;->d:I

    aput-object v0, v1, v2

    iget-object v0, p1, Loxi;->c:[Lort;

    add-int/lit8 v1, v2, 0x1

    iput v1, p1, Loxi;->d:I

    aput-object p2, v0, v2

    goto/16 :goto_8

    :pswitch_0
    check-cast p1, Lort;

    check-cast p2, Lokx;

    if-nez p1, :cond_0

    instance-of p1, p2, Lort;

    if-eqz p1, :cond_1

    move-object v1, p2

    check-cast v1, Lort;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :cond_1
    :goto_0
    return-object v1

    :pswitch_1
    check-cast p2, Lokx;

    instance-of v0, p2, Lort;

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_4

    move-object p1, p2

    goto :goto_3

    :cond_4
    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_5
    :goto_3
    return-object p1

    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lokx;

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p1, p2}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lokx;

    if-nez p1, :cond_7

    instance-of p1, p2, Lopm;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lola;

    check-cast p2, Lokx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lopm;

    if-eqz v0, :cond_8

    check-cast p2, Lopm;

    invoke-interface {p2}, Lopm;->a()Lopm;

    move-result-object p2

    invoke-interface {p1, p2}, Lola;->plus(Lola;)Lola;

    move-result-object p1

    goto :goto_5

    :cond_8
    invoke-interface {p1, p2}, Lola;->plus(Lola;)Lola;

    move-result-object p1

    :goto_5
    return-object p1

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lokx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6
    return-object p1

    :pswitch_7
    check-cast p1, Lola;

    check-cast p2, Lokx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lokx;->getKey()Loky;

    move-result-object v0

    invoke-interface {p1, v0}, Lola;->minusKey(Loky;)Lola;

    move-result-object p1

    sget-object v0, Lolb;->a:Lolb;

    if-eq p1, v0, :cond_c

    sget-object v0, Lokw;->a:Lokv;

    invoke-interface {p1, v0}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    check-cast v0, Lokw;

    if-nez v0, :cond_a

    new-instance v0, Lokt;

    invoke-direct {v0, p1, p2}, Lokt;-><init>(Lola;Lokx;)V

    move-object p2, v0

    goto :goto_7

    :cond_a
    sget-object v1, Lokw;->a:Lokv;

    invoke-interface {p1, v1}, Lola;->minusKey(Loky;)Lola;

    move-result-object p1

    sget-object v1, Lolb;->a:Lolb;

    if-ne p1, v1, :cond_b

    new-instance p1, Lokt;

    invoke-direct {p1, p2, v0}, Lokt;-><init>(Lola;Lokx;)V

    move-object p2, p1

    goto :goto_7

    :cond_b
    new-instance v1, Lokt;

    new-instance v2, Lokt;

    invoke-direct {v2, p1, p2}, Lokt;-><init>(Lola;Lokx;)V

    invoke-direct {v1, v2, v0}, Lokt;-><init>(Lola;Lokx;)V

    move-object p2, v1

    :cond_c
    :goto_7
    return-object p2

    :cond_d
    :goto_8
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
