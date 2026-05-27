.class public final Lbvo;
.super Ljava/lang/Object;

# interfaces
.implements Lbva;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvo;->a:Landroid/content/Context;

    iput-object p2, p0, Lbvo;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final b(Lbve;)Lbuz;
    .locals 5

    new-instance v0, Lbvq;

    iget-object v1, p0, Lbvo;->a:Landroid/content/Context;

    const-class v2, Ljava/io/File;

    iget-object v3, p0, Lbvo;->b:Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Lbve;->a(Ljava/lang/Class;Ljava/lang/Class;)Lbuz;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    iget-object v4, p0, Lbvo;->b:Ljava/lang/Class;

    invoke-virtual {p1, v3, v4}, Lbve;->a(Ljava/lang/Class;Ljava/lang/Class;)Lbuz;

    move-result-object p1

    iget-object v3, p0, Lbvo;->b:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1, v3}, Lbvq;-><init>(Landroid/content/Context;Lbuz;Lbuz;Ljava/lang/Class;)V

    return-object v0
.end method
