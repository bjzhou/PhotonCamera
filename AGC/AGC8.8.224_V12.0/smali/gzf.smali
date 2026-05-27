.class public final synthetic Lgzf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lgzh;

.field public final synthetic b:Landroid/content/SharedPreferences;

.field public final synthetic c:Ldhi;


# direct methods
.method public synthetic constructor <init>(Lgzh;Landroid/content/SharedPreferences;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgzf;->a:Lgzh;

    iput-object p2, p0, Lgzf;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lgzf;->c:Ldhi;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lgzf;->a:Lgzh;

    iget-object v0, p0, Lgzf;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lgzf;->c:Ldhi;

    iget-object p1, p1, Lgzh;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgzg;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p1, Lgzg;->a:Lgzb;

    invoke-virtual {v0, p2}, Lgzb;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lgzg;->a:Lgzb;

    iget-object p2, p2, Lgzb;->b:Lgza;

    invoke-interface {p2, v1}, Lgza;->a(Ldhi;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    iget-object v0, p1, Lgzg;->b:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    invoke-static {v0, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lgzg;->b:Ljwb;

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
