.class public final synthetic Ldki;
.super Ljava/lang/Object;

# interfaces
.implements Ldkj;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldki;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;ILhkb;)Z
    .locals 1

    iget-object v0, p0, Ldki;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Ldkl;->c(Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p3, Lhkb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
