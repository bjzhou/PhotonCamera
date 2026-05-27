.class public final Lfmx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic a:Lfmx;


# instance fields
.field private final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfmx;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lfmx;-><init>(I)V

    sput-object v0, Lfmx;->a:Lfmx;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfmx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lfmx;->b:I

    return-void
.end method
