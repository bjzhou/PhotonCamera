.class public final synthetic Lgbs;
.super Ljava/lang/Object;

# interfaces
.implements Legc;


# static fields
.field public static final synthetic a:Lgbs;

.field public static final synthetic b:Lgbs;


# instance fields
.field private final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lgbs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgbs;-><init>(I)V

    sput-object v0, Lgbs;->b:Lgbs;

    new-instance v0, Lgbs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbs;-><init>(I)V

    sput-object v0, Lgbs;->a:Lgbs;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgbs;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkou;Z)Lega;
    .locals 0

    iget p1, p0, Lgbs;->c:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lega;->a:Lega;

    return-object p1

    :pswitch_0
    sget-object p1, Lega;->a:Lega;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
