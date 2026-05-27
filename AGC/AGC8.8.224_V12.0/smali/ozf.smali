.class public final Lozf;
.super Ljava/lang/Object;

# interfaces
.implements Lnww;


# static fields
.field static final a:Lnww;

.field static final b:Lnww;

.field static final c:Lnww;

.field static final d:Lnww;

.field static final e:Lnww;

.field static final f:Lnww;

.field public static final g:Lnww;


# instance fields
.field private final synthetic h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lozf;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lozf;-><init>(I)V

    sput-object v0, Lozf;->g:Lnww;

    new-instance v0, Lozf;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lozf;-><init>(I)V

    sput-object v0, Lozf;->f:Lnww;

    new-instance v0, Lozf;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lozf;-><init>(I)V

    sput-object v0, Lozf;->e:Lnww;

    new-instance v0, Lozf;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lozf;-><init>(I)V

    sput-object v0, Lozf;->d:Lnww;

    new-instance v0, Lozf;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lozf;-><init>(I)V

    sput-object v0, Lozf;->c:Lnww;

    new-instance v0, Lozf;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lozf;-><init>(I)V

    sput-object v0, Lozf;->b:Lnww;

    new-instance v0, Lozf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lozf;-><init>(I)V

    sput-object v0, Lozf;->a:Lnww;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    iput p1, p0, Lozf;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    iget v0, p0, Lozf;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v2

    :pswitch_0
    invoke-static {p1}, Lljz;->u(I)I

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :pswitch_1
    packed-switch p1, :pswitch_data_2

    return v2

    :pswitch_2
    return v1

    :pswitch_3
    sget-object v0, Lozo;->a:Lozo;

    packed-switch p1, :pswitch_data_3

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_4
    sget-object p1, Lozo;->c:Lozo;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lozo;->b:Lozo;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lozo;->a:Lozo;

    :goto_0
    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    :pswitch_7
    packed-switch p1, :pswitch_data_4

    return v2

    :pswitch_8
    return v1

    :pswitch_9
    packed-switch p1, :pswitch_data_5

    return v2

    :pswitch_a
    return v1

    :pswitch_b
    invoke-static {p1}, Lljz;->v(I)I

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2

    :pswitch_c
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
