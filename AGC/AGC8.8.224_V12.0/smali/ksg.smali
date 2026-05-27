.class public final Lksg;
.super Ljava/lang/Object;

# interfaces
.implements Lksk;


# static fields
.field public static final a:Lksg;

.field public static final b:Lksg;


# instance fields
.field private final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lksg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lksg;-><init>(I)V

    sput-object v0, Lksg;->b:Lksg;

    new-instance v0, Lksg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lksg;-><init>(I)V

    sput-object v0, Lksg;->a:Lksg;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    iput p1, p0, Lksg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget v0, p0, Lksg;->c:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
