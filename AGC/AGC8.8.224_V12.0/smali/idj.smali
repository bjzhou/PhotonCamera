.class public final synthetic Lidj;
.super Ljava/lang/Object;

# interfaces
.implements Lant;


# static fields
.field public static final synthetic a:Lidj;

.field public static final synthetic b:Lidj;

.field public static final synthetic c:Lidj;


# instance fields
.field private final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lidj;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lidj;-><init>(I)V

    sput-object v0, Lidj;->c:Lidj;

    new-instance v0, Lidj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lidj;-><init>(I)V

    sput-object v0, Lidj;->b:Lidj;

    new-instance v0, Lidj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lidj;-><init>(I)V

    sput-object v0, Lidj;->a:Lidj;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lidj;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget p1, p0, Lidj;->d:I

    const/4 p2, 0x1

    return p2
.end method
